Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0823DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 14:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648219078;
	h=To:Subject:From:Message-Id:Date;
	bh=eduBxm8APEqDsEsDhbAUwZtUPbRJrnPyMg672ld1v80=;
	b=QT0GYWaUkc5asnox/CfjYvLg8kQghVU231n36C7L//73xPD1t6zPtilaSH8WCYtX
	PbWSFdpjdY7YfEfX+LNlVCrsKg1dzHhpKQsBddn1zaycrQVqMBdpav7JOZAe2xezvqT
	pSYOP2Hi0CSJAV0HoBKK5TvcqLGM2pu/QIAqcsjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648219078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eduBxm8APEqDsEsDhbAUwZtUPbRJrnPyMg672ld1v80=;
	b=UzDWp8q63WeBwCrOVNKsqH1nWRruJ8w0fuWql3j1bLuphqydnqlCZf8qj3NCxgzX
	1Q0XLER7uQpDZM7xLdMQIdhwfbeTjb/08TJi3gTzYS+6ZFOZG+uxpJqeicnkT8Kt/S6
	Snz7YbQS9IUXsUuK2WulKsZXZ2wd1ImAc3uUsH6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1833ec4-53709b1c-6a92-4d4c-89f9-e9a9c92b7988-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7c77f1d6180d4523b26b5c2d244b26056903fbdf181024cc0958ce6b7f4d05d
Date: Fri, 25 Mar 2022 14:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648219078
