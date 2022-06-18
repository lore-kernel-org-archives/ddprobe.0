Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9647B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655564879;
	h=To:Subject:From:Message-Id:Date;
	bh=ISsw9gqr1Y/OzuUIcQeYzvQtGKa31mLlVfmGh90Gksc=;
	b=Itzndk8IYRNc/QgiBXrkC3uMjjgRERYKwMlSZiYbI74F8K7BWA5ZUSIS8xMfIbBk
	ETUw4fHFBcUrKXZqCM+1L0qqYRUUwoxi8rUl7oGCdI+3UsjNQVLEhD7JcfOMl5f+7iP
	/XqkU75Aam5TwLvdv6Zm85textXY0cNkw+xUFPyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655564879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISsw9gqr1Y/OzuUIcQeYzvQtGKa31mLlVfmGh90Gksc=;
	b=O6Cg75Y4dAbP7ZRuu9DNpQe86l3KlDAlVrytJFrG8CV0lUHHAznaVe1fMgyPpJd9
	AHlJ3hYsMIq+4KruaKN4nkCoA79R25/rOrN+iuwCfADxHIn6lJUsn023Q3eULI9q0Uk
	oDLpytKIpUGJ4XGNIXTLRGq3V2ZnAi9tCrsViQUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181775b45eb-6f99c843-cec3-4700-906d-179f7d95bb2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbe24960fbde79c68d98bf8a09658b42c6642ee86f246d394fa8fcd9498472bb
Date: Sat, 18 Jun 2022 15:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655564879
