Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922C7A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648885738;
	h=To:Subject:From:Message-Id:Date;
	bh=YQLx/ZJFk4viM4vjfoRFt7I8qMc2mW7Dlic8LJ6KeJM=;
	b=LsFJeh6H72FQ9DxwlntFQLZlSi4Q5UC+qr4PhDO3tjWrtsYY4hdxdMm0xQy5XC2x
	WFoiMBwiVcNZgtAHuIcOIJctqGN8P2OMh/BVr/FQa+ctuxkFLtTkHI+NZ8ljWmda8x/
	7fsjdxmCallVd4i4tOhS6NTXAqD9eo0Kst1VSxUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648885738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YQLx/ZJFk4viM4vjfoRFt7I8qMc2mW7Dlic8LJ6KeJM=;
	b=Dy42oYUQLCMLy9KstNIOJDLy1GmrugVmVn8hJyGsxKR09X3AU2s8bSSYECEG0/Qi
	xTL/K4UOJi8P4Pf3MFl0nGrVBUmDTumCsBPyv23VeqYdbX65GLYz0btmTQkm9jphy7X
	/dyzoW8lakkAZ8ZM+fqDcGdfiPxevjw1mqqqesi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe93fab62-b8d5ce5e-8305-4d93-baa2-54c6c0949bce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ee4e766b7026d5194d085d686850c2d95295fee43253fe24a7504126e870744
Date: Sat, 2 Apr 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648885738
