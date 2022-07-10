Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A761104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657447612;
	h=To:Subject:From:Message-Id:Date;
	bh=MqHvdGE/mjRZ2GrsmPKXhNLaJyw8tEpobFJjQyfUFLI=;
	b=EBkCBgAWHngcee0iTbOFfdZrhZlCAQZ6fQXSBNSOc07vxV+pIcs54Qw9+zAkcTuy
	ADN33tdNhepcjVeqLRcrE9VS2Bs8Y0naJt7KOJFK/rCYoeLn7XSCc89PDEc+1LEqKe7
	CEo4wqMU7zoSh0bWrvdDw0QhBUgW3/WwfGuIbS9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657447612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MqHvdGE/mjRZ2GrsmPKXhNLaJyw8tEpobFJjQyfUFLI=;
	b=IYEXreVlz5N3BgVlSswjqpIiQC2IG3i1SlbiH0g4/ZNNJs7/ijj0brzA15ZAM2Si
	P830WPhxImP4JnGYv7G0BLwtpi2gMrGxum9Ux8nbIz5E/dC/wVfreotFWMiR36QaNYC
	EhjKZtgUxE0gBYmeSvRP3s17qE0bVVpxoImY4qCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7937f67-c410fbc2-3453-4012-b234-76f0127335f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27366f2295b099c447c5eb8ef2a838bcb8efce4749e99b9916bb9fcebb5d7166
Date: Sun, 10 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657447612
