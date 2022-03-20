Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F44020E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647812784;
	h=To:Subject:From:Message-Id:Date;
	bh=+cHMg4IxBIRLclLmf83FGlhMwHWMjKYUqax277iEGPk=;
	b=BL7sx/xWNtl0MVYn6yn7JooTcqWEEC1ERitnq5sd3aUZbYJjHYNngXVDZLVhPRxx
	aQHR2VDsx891h+Xv3VJectGeAP9DpKozJcDhbq3WvCtsLJcN5ku+O5W4OBDTzeNpTP8
	63GWy/tV9LuUPJ94rEC5t55nOSvmW9C1C1Qs/PEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647812784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+cHMg4IxBIRLclLmf83FGlhMwHWMjKYUqax277iEGPk=;
	b=BB1jyCLF2Vm02mB36y5//tOdKA1bbv1Q+XItqUje75hSNXTHxiojq+LPhf4tipYf
	tXY0kXmU9lOBwu+fAr/xfkDqpx1S2cBxMgKIjdvFk5r00Wabg71qBVJdolex/Keq8rF
	orebipj+0ixwrpj+qegj8DrS/WjHtfnDwhu/VGhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa94bb258-b38682bb-eb97-423b-8e87-704669f9c62d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c62f981e318f0d6d4ca872354ce8966a8d94f1db86102b60bd95c94fe9eeeb
Date: Sun, 20 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647812784
