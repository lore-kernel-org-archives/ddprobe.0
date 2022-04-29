Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B1210EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651221418;
	h=To:Subject:From:Message-Id:Date;
	bh=3QT6vsk3dme7DCHEo/7ehFWjQKlyfEZOdBWR+r0PY5A=;
	b=YWgk5KbdQPi2aZnO3QwlUaVSqWwcGqFAMcnXqfBJPFV6l8OEW+7tWbZRJfRQEjhS
	qs2OgH+LcJ1DqvU4wMSD0L0nUw3896Ff9UwAuQW/ut1Q/MnCYYNssf7UtyDDNtqW5/o
	aKUheIA2QzDKk76XwwW3gZNoVwOoB2J6rMhQdlc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651221418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3QT6vsk3dme7DCHEo/7ehFWjQKlyfEZOdBWR+r0PY5A=;
	b=FfJIc4JtnSwbEkFk+5M8S7HPj/ipxZNQAvhWskbxV93K0qeAf+DoGulNdZFj73mR
	dKYJs4LyDWiNDTDMHlPOX3nyW7hHID1zCYhn58Xng/Ks+y9rTnGah9a+T5GqkNek4UC
	MqvOZ5J21j7cNmswaOmSV0FJ31Flb2lL4TvcFolQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807477512d-bff8e80b-55cd-41b7-b691-d6328f7b5f3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 444787ea279fef053f74900cbc4b77c3c38b84be30f3f3229491ce631f66e9d1
Date: Fri, 29 Apr 2022 08:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651221418
