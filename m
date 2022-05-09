Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524137B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 09:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652089798;
	h=To:Subject:From:Message-Id:Date;
	bh=HmbujbeIKZ0Tcx/+G00ug2rrsDjfGZHCMxLiiMI/1bw=;
	b=MlhhF87rIkQKxLarHH3mL9UApbU5e6hYizQutkVW/G43DPoOOUHYA03pvU3gvN+J
	n4AgdbjS61jcTSQcobTT5jsRvkjE4Xo22m2/KUgwyyw0/p8u90IDlHpqIMgeInH/olJ
	Iicw0bJujcIMPmgPRgfes2rtqr8+ZbB8jk20ZeMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652089798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HmbujbeIKZ0Tcx/+G00ug2rrsDjfGZHCMxLiiMI/1bw=;
	b=LStV+EZS3SNFxoii3hX1ASqgjndrG4otdyKE5oRWEdmtq6rG73x7GH3GVgGEy+tC
	OS2xBwKP2h2mvJVcURS+foTv3N+H71fhxqBuB6W8I2xteiMJiFfE1EWTHA5TsEwvsIG
	DWAyu4I+PYdaAgRXEcbhD/itMMbporTPSWz18BVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a839be7c-c1f82700-838b-4fc4-9436-f3530c0f3f49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8630b695f8404dc2534772b48513c682fbe73f668a2c855d51ee9f960ac29364
Date: Mon, 9 May 2022 09:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652089798
