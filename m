Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3E333D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647006384;
	h=To:Subject:From:Message-Id:Date;
	bh=2qG5GgiKUJSmizX6lMD+mvb5HmklZYn5ksjRZ+KuVic=;
	b=CZeJm6rDL6rZnSEnKNMve3DWCDViSoiKWX9RCQOTzkZq1AsYFcBsHjKDG/7PuFdK
	T7PUZnY1lfyDgY7Wk1ErSyvn0ostcoPWBtTuqFsT6Nr4Z9hfL2xns1zWV02bkxjfveY
	auy3+sQcJ/YbQLp9EWnLY39Oztq4bLj4DelINp4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647006384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2qG5GgiKUJSmizX6lMD+mvb5HmklZYn5ksjRZ+KuVic=;
	b=JpMXJImyBnjgm9xPRxGXoZaukf+OcOm42hKa/CepCicu4UOnL74+m/2EK1tdMPG7
	U85x5lwoQmdGO0F1pNkcqUcNXc/NNOLbvfV3tMQn2N9Wd6fFwcbXt+ALuTKZFajx2Pz
	EgVZp5A/SK5qJF2Rg0ORrjAJCmy79Tzi3/IVnaaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f793b0280-7b04a2e9-09ee-48c9-84c5-e18f6dc3143d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f19ba5e330c0bd5b5c3fbf2c22a207b95f90304c37be5830389a537d27fcbe5
Date: Fri, 11 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647006384
