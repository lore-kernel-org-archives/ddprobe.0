Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7683729AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647773784;
	h=To:Subject:From:Message-Id:Date;
	bh=Be1MeYj5+fGLbgJfjDrNQMgZMniuTf0Fbx/GBUIob7I=;
	b=UwVmuOR6G7BU6n+/GUziyRAer5ejr3TKEBzqwEbRpjkEQ4ts50zJHe1yTk5V+hc2
	eDT9TOy97ryR6ajOi7QK8iWxIAia84T9yQIQNI8cPIeUz5WN88i2RfubPv2Y8sMemll
	h3hLqaJVdNaaPhI0+6BH1jyume4LJkVNbcBjc330=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647773784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Be1MeYj5+fGLbgJfjDrNQMgZMniuTf0Fbx/GBUIob7I=;
	b=I/IzYGBDr+j3wTIx4oS8TNP4hjpfyMqD+yGQzTJU5w1GeR6XSbI7LP6hChmTrz6W
	AyagmMUkaHQXmXkUW4Fy/igZChWO8/PDOXhQvZysOCnHZbxgRONvUTe1A+ugFR8iW07
	/AMkKbu6Ywh510YdNerAYMrCqsTHxgkaSFQTUqWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6f89a88-1fc540b9-e4a1-40a2-8a0a-9a5ee1b3e9ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5571e8ad501f762f5bf0d112ee1bab8aac7a8bff5dd7f835391f6e36eccfb38f
Date: Sun, 20 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647773784
