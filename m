Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2106ECA
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650362638;
	h=To:Subject:From:Message-Id:Date;
	bh=/HFfaNY1UBc0iFzRs9qci8mgtqVNrpcSxAA3QoR1jkk=;
	b=QkgeChc7N27YiY2oIwkcvNm5IawBOxP0XlwBTleWjbIAm9wsKumIC9Ac6Hppxa8o
	g3GBRW09yJlTsutRrxl2ZPJAoetTtwog/edmmugKDC2AM9UVaye4P0YyaC1VgtRP5PJ
	S9cLhD92dMsDkUwNzQ0Ne5GM5Jhb0uqhjHH9EHo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650362638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/HFfaNY1UBc0iFzRs9qci8mgtqVNrpcSxAA3QoR1jkk=;
	b=KaDbL20t1guGpwwnLsfJ5xWpZFvtOrb6VBDqeccS3LCyU5O7Ux7l/V3Nu65lhwA6
	48XfOtGIu0q7ozsJ0ZiS90tyw7gZ5KaoRFRIoFkrWbhn+lJFGeRGy+KSJt1Uk54di1G
	+RC5/rIIj9msz0DaENRpaauud1tyuxkhYFTZjbN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041475ff8-0f2edaca-3f1a-4a5e-afdc-bd609cb85eb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6ec9c557b7e2ad77362d32ad437736b7dc54871ca2e0bb91a6ac40fafaa0e0b
Date: Tue, 19 Apr 2022 10:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650362638
