Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EA610E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 00:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651192138;
	h=To:Subject:From:Message-Id:Date;
	bh=lnmPgpKNIO/jOIaKkBP2XmT8MhCfGjvC0UmCdBpMAIY=;
	b=fAmJHjmVyvgZUbrBE7Udt0g7OLkWa3pCJa7B0iIwDAkz4FIWXYPPa9Ain+jaOEar
	TgBYxXufw69HE7miYZ8FS9qqp3WhEAsmnaNjj4r+x59U77V8rchO1DYt1E4YqQoOnh6
	EqwOoG09pFzkamAhFvkNerwGVSQqphR4gEM6Fs5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651192138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lnmPgpKNIO/jOIaKkBP2XmT8MhCfGjvC0UmCdBpMAIY=;
	b=dHQl2eY57R5dDi6bOxXCy79Lkh3YnOZ1y6rcIhF9+OxysmM0IjkVlqhDkRXHLTSI
	4bE2BQRrZCe+cAbXT09qxuTEr/apGDCWd61/y0Jwrs8/cK9eYD007BLiEe2uUamt4AV
	X66rL/kMmwX2WD+ynFWWtsYM6iiPe3f3w3PiG1Xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018072b88a0d-2e0bd877-053d-4351-b4f2-93a9125c456f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b68d0c31cd4ab4012399d70157d2c6f4c224f6a59d3ca35b0d1523adc31a914
Date: Fri, 29 Apr 2022 00:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651192138
