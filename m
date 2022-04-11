Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED0433C0
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 00:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649635378;
	h=To:Subject:From:Message-Id:Date;
	bh=Vwdw6A9nH/BzTWbLIUWCw4NSW3I2/yXXvGMZp8BMhrU=;
	b=OCSZhIw7NeqX0xH/3+sNM3ZMEKYD41hdDqE4I+wYtAAJpGckoTx01d6qrL6xEMYd
	UMdRHCGxaASkhW+xaTJaJH4f4vJxDQU+hjvdN16ujOMStqMzjaKFBXRXzFqh1YQyhiM
	6dMs2dkeTnUbqWIQC+ETo/UebOdpThsSf6aWq5JI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649635378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vwdw6A9nH/BzTWbLIUWCw4NSW3I2/yXXvGMZp8BMhrU=;
	b=SNg4XwymVA3QcpbaJUAhG5JmJSoNTnYfFW/RYp5sGubR2b7IS1Owbht21o9OU/cE
	PsHJZ2f3ZZS9tlZTVLaioYxia9Wcrr4K4vAhefHDsh6Odx6/Nqmr5MjVwXUTx4F2HuB
	HSyngIFL1E5zY946ihA41sLr10DJBx/F7f8HQrJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018015ee448c-df5e44a8-541e-4c14-8b3f-3c40916671e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c43624a56f9b4f80af1f965f19210c13f2fa60cabd67d469e95c3cf6406dcd9
Date: Mon, 11 Apr 2022 00:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649635378
