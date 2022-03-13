Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956BBA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647212485;
	h=To:Subject:From:Message-Id:Date;
	bh=+dq6UdfxkbCneqw6yJLVImIh3N2BHWR88pI+thK5knE=;
	b=kdOMhteu63MQSCbW19Ymy0Lpu50ehoQ1G8UYwv5bioX2KO2IDzVSuoW3SIjFCNAx
	Mxn0vt8QA7lFdIG1U3Ydkjec97iwL4ICxPh9NHOyTcy91CZPvBH5I2fRmrhb6BE19kC
	RK/MPPxA6hns7LMjeaMn27X7GfW2KPjg0QM9yX/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647212485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dq6UdfxkbCneqw6yJLVImIh3N2BHWR88pI+thK5knE=;
	b=Tf2hJRr7ooOjpkYpmr3DgaZmw41MDLfWxSZ2ZW1DTdYvtke+1uZogOl+uH1v1uA9
	A2iorsrQdaoUFMZVd/6rMQ51T5XsRddSxENeZlVs9y6Omo4UJkCCoPA0jg5wTBhKt/2
	O9dAudnkmlPbqJuv1rFXbSlkBvc5Dd/j6RaW4DKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8583d8fd-e48abcd8-36f8-48c1-8686-5eb326504df5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a883364f3ab674bb13b80ce6da03326211b8105bafaf21230bfcaf12a0a39db6
Date: Sun, 13 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647212484
