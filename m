Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08B333E0
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 22:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651702738;
	h=To:Subject:From:Message-Id:Date;
	bh=FiD8luOjPUM9o8CX3D1ziqdkDCQCAC8P36vVHHiPMjI=;
	b=NjtCVP8iiP1htqX2A+mlcuqVpOtB7aHI1RGVx8yeEIlg+oWz7DL2BSoTUWKm2ZCf
	aITNT7tfxuVS+ssyCkTFNCS87TWb3OqdswHSoTd7mvSizid1YgWLRoGtSQiwHvXmPWI
	nNPMjPY2DoNr7jJ7Wxsj/JIc4BIrTILQtwoBB+vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651702738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FiD8luOjPUM9o8CX3D1ziqdkDCQCAC8P36vVHHiPMjI=;
	b=cXLtEQTxvxpx916bBeDnS89F95oJm8VDqj9p30wF6REX77yAIWafwTmrt8i9t/pY
	P6VCdgE1jPyIAbQugBqeNVhCAYbn1KgHvMA+JzPntUj5Y66FfdmgOQMYNPfIJ3Dq8G7
	1Eyv50roxgfuSzUXBQLPNohdjWcL1RrJ4gj7oGlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809127ad64-707a1241-cc45-4062-b5ef-47678af1ead4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c888d5ee0614847149f0332659ddb0d505985cb391782434951b4f17b2f6da1
Date: Wed, 4 May 2022 22:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651702738
