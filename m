Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71322624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658802412;
	h=To:Subject:From:Message-Id:Date;
	bh=Sj4jyMNJ0yjXPmBPxtwsgjuBxgjyQyacDBJ8XD6OaT8=;
	b=AYkoDJpLb2NOdk7fkp6KmKuvXxR4C/TW6xbR8i2hLjT74mICKWXUymdrB1lS85OW
	Aev5WX0OdYwyBj2IO2ESsQfVuK/iM+lSq55cn3cU0DsEYIPGLCuW2nVxnjPYHioN42p
	NQXB3mz/t3o5PNHb5QptisCSBbIY6ZrAOETlgUI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658802412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sj4jyMNJ0yjXPmBPxtwsgjuBxgjyQyacDBJ8XD6OaT8=;
	b=BnMA9uzqVacsJMJhbJ6hHfi1GeGb+73VOtaa78mm8DwdK0bHUlGjq51wKFhMYpk9
	afR2d407zOEv4mOinfutUiyLztgdk7MnJaYOSpL6PmkjPxXChbvWfW+a63qqddsWaPw
	BoJz661AmOSXh8Z4HdBTAE1tGqI5i0m/MVBCrNEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238541beb-7d213e31-cc55-4a40-a1a4-cfa4c37a8eb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8440bdfe1c7ec1efc014244b730611b121f9af7b9028078adc53a49c17c79dc
Date: Tue, 26 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658802412
