Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5031FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647399084;
	h=To:Subject:From:Message-Id:Date;
	bh=NloufMNOCXmeJJtHReOdAXUHt/K+Q9aSOC9cqqTHN4g=;
	b=KKID6jcJlmuYMktm4GmKWCnhKQEqw6odFvRjYIHodACwPkvb9lnnGcx8X2zG7OI/
	GshOzqEoeh4DKnxhfRuYPa/aH2XDaEPPAmOLNmnZsP6/s4QUkH2CaJU3Qw8rtb0Ku3T
	E2JsUyOIngDFoWTrPAppEfQUNM0NN0pKjtUdrPRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647399084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NloufMNOCXmeJJtHReOdAXUHt/K+Q9aSOC9cqqTHN4g=;
	b=hGoomTqfNszLu/NtOn0nX5UZEyStse3aB09VH/vfvylE3/a5pwDGoWgSJdO20bQd
	PW6THeEwLNWh3teKVs8eUuCr2SaATxSQ/8kiaOeaPm7sHIEFf9MaFVXxJvan7ENLTbR
	Tuzqg0QtXUWslBdUNuGU/dpc8z5YphQBMUzi8plI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90a322be-a3afeacf-6a93-4074-b382-49bb8cb7eecc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 284ef05390a32b84ad29dca614e76dab88c3bfa2d42e2e0060e2d6d67d4fd977
Date: Wed, 16 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647399084
