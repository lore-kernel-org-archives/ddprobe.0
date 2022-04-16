Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C00C7B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 15:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650122878;
	h=To:Subject:From:Message-Id:Date;
	bh=5QNRSlQkmdAsImIC4+MfzOGclnvDo3nC77iK3U5PdKM=;
	b=TeT/vTFvWgea4mJYPOzQGT0XnmtjEidmhlFeVjpQSi6B4dVfEmf8pxGv7fMrydul
	6rTwSAzZpUuP9njpN2rfVcBGvmC7speJeLd6rFAxutIwdulzl7XcXXUmWjWXCc3a0Rv
	CwgidnGsa4utxkf2JsP/jERM7D8Sc8hePGqGn0+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650122878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5QNRSlQkmdAsImIC4+MfzOGclnvDo3nC77iK3U5PdKM=;
	b=CedMeejZ1trGTlHbNgZ/HmRO+Bk874Mq1vU+qGx+8ghYPud9Z1+75A4FA4IXw1yP
	16nCxAzTMN9s0admLak6W5MkoF9U9bqTP9RVLDEpuV9z5a/2RGVbwrj1p24/QVG85bI
	/nkFsQNPLZ5ujICFpf01TI8ZUlfGNwLgtp/HUF4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032fced2a-8287d5b7-fb54-4c53-b864-38c0fc64ec88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8e5bc1992aebdca0c6dd16109e47ec63d13f02d654b462596fbe52468499ee6
Date: Sat, 16 Apr 2022 15:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650122878
