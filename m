Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9897C4350
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647591385;
	h=To:Subject:From:Message-Id:Date;
	bh=dtl5UC2RzrtB7Kz2oBHFsYN+urn2LHg6MkfYcikdwlk=;
	b=FUOGclHscwgRY04AFJ7UP8uW8LN3gDMi+Tov8NejEC5kSpIPcDe01DzFFHVNpOSe
	zgNAlyPZFlSyDXdUQOKYjfVWWeVZjG1i+ucBKbgfo9GcJ6lWA3yNwoLdOB2C369DlJs
	QqLL8nhUdyppBXEJ9g+7alvUkwC1OEd3P3xDn5eU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647591385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtl5UC2RzrtB7Kz2oBHFsYN+urn2LHg6MkfYcikdwlk=;
	b=BPlICZ2SI+3GbTjpxUVvKj/sCbmEEL2d8M6cEgwYTXD52rFFSHekW6B3/6zdMQRk
	DTxkyGI8FJYS4c0Pu2NXAPkk5UuivC+KSddFXMjdsg3H/Kf+uT0zEpGLwkOG80JeV5S
	q2prbgFWJRlbcoQ6gTEg6D16k/5zt40I2t0Iuv5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c1966f8-a4e2ac40-179c-47d8-9ecc-a57acd57006a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faa0932940db35c70676c52eb0b98593289a585f3c0d06f6330a379b049b4f51
Date: Fri, 18 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647591384
