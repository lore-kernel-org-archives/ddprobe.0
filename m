Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F204136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651957198;
	h=To:Subject:From:Message-Id:Date;
	bh=wwxsSDOSKg02vMnQnJpWiquSSnkPCnpSp6+N31PfVNc=;
	b=XHmZvqRNbEUg4434yG66ofR0AcIgKLZe1spPpvlIrjqqQsXCyVs1/TUeuXt/lPhk
	0lkLyPe9t1Gl5ibVbKBYZMlK6BV4KOW707B4Ql+ostCCiQID0PO5ZO8nVl7dpOMzhM7
	DCouN//4Y/g+6z1yYczzQb9wz5sGBuOdmOr5yk0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651957198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wwxsSDOSKg02vMnQnJpWiquSSnkPCnpSp6+N31PfVNc=;
	b=WPsHjFfmofv3HKEl+LvtuNj7YQKuhtMgrUCxa/dH6AVfyy9Akfu8DWVmdVYhJ8+4
	ncAjD8GpAc3DfSmPRpjHkvtQubTP80evR9qZ1lpQ3epfw6WlKbFNy61BcoLUOCBI29H
	0xR575XHBoyFkKNmTM1GepUiblxEx3OhPATTIz5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0526dc4-7629d54e-59ff-4ed6-bd82-5645eeccfa77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b10d909818837abdb8c8e6ec759603a32a000e8d4ccb803743138614af97f6ef
Date: Sat, 7 May 2022 20:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651957198
