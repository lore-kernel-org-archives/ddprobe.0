Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092F93D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 23:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652224679;
	h=To:Subject:From:Message-Id:Date;
	bh=rnW8Zcu+b+g3/nyKbkga6wQS3aWfr3QOD4xIkLlApME=;
	b=IDXt/IWKBKK7p6UgqYZ49e1TszhZXplen7NIfEq6SQUVATmujXmH5l6uBGSsfBxG
	f2IOvQGxdmng9UxoPz5O5/HmoHoiGIQj6QI21gvvKXPG/bSMhxUhM+dhELWN5jyR3K6
	qI0H9oxPdKMyvDnjJdzcQVz3OiDVAQ7N0UEuZh9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652224679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rnW8Zcu+b+g3/nyKbkga6wQS3aWfr3QOD4xIkLlApME=;
	b=ILUsi99dmxzRRcvefhSh4W5PDOn8nkYEI4zh2SmR+Yw95EqUqv3gUF2LHWfFjvMC
	cONB9ruOtSY2/PwWIdnkKg3/trlVyq3kUs+bNKXtc9mZ8+nUOpfuG9+Q3WHZLKucFDM
	Ekyexib02eKLPlXAwY4nx6Rqz2+sOL5bX5FNP1lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b043dd58-4af24264-834a-4041-bacb-e886cb445cf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd65f37eeea3b42361a984cb6fe48e65d7f477ad3e4d88973e3888e87ed81bfb
Date: Tue, 10 May 2022 23:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652224679
