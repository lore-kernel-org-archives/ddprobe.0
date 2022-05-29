Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A9F17D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653823619;
	h=To:Subject:From:Message-Id:Date;
	bh=lC3HYIUPl76QeHv60eNRRLGkgW4hA59B0BNuMMNQ9ic=;
	b=WfAa/5Sd45VZbEIfquV1S5yd7CPLVXWQSL5Gv11xOhn0XpFcev7JNtr363QikUf0
	GxQKZpknpqau2zurRGwvoNxpfYBVp4tFu0dTsJOmHaLRBLHhh/xc40aE/q9dN89HDbj
	BAjKQpiKalHNfh7nmynKLRywngdZ4mZkMiWl9jIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653823619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lC3HYIUPl76QeHv60eNRRLGkgW4hA59B0BNuMMNQ9ic=;
	b=Jx3ZRcJJSmwNx3xbm8VpXZKyqunb3pswNHCFxiO0jzY6GA/gSbRPAejAU+zd9swY
	wfcqaWUhn8KnlzC0A/Fg6zUXb3QF+vHzBRwfwfSbG+1cHxFSe0bwPBUU/90JSzraocg
	O6oP6R1YQFF2ur4VgbrMKyQ1lLk9iqAu/u61tlYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f91c0bc-c194f297-46e4-49c7-934e-e625c4ff341f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a78315d9191c78f66ee4db1d850c71e658c34d0c6b944042ec62af99ce6a2d2
Date: Sun, 29 May 2022 11:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653823619
