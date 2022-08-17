Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C823A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660704652;
	h=To:Subject:From:Message-Id:Date;
	bh=UX/KW1qPjdJDLFHWgEBVLQgO7MCzfZEaHf3/eOvC3Rs=;
	b=bkTts7DJH6JBkvaKYAoxtXijMOq+a0sKA0f3U4BI9DeuWKNhzDvxlvGn1F6kulsl
	ytrR5SaUJBu/jZVwGtKXm7wzdAkVZESx6dpsWImQKIryXHRom0l4D6GcruYjrUEZbZH
	mUvdsFAOz+QVm62wklH1g0FbVu9x9UnIWRyYUdxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660704652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UX/KW1qPjdJDLFHWgEBVLQgO7MCzfZEaHf3/eOvC3Rs=;
	b=k6IPDAceOibUzaX610jeWfHSKTn8qlo/KiTgwfMZj7qFdhnEAtYUrRjWtByzUvrP
	6ZYyG6ieohMk7691uYsQfJqq+IGhfUatBJFXjCLvUZTcrRQSa5kyt7rfa/kpgaJny0K
	DNEoeKZpYh910MQnyCRj9c4Ajo/3oSqIqVzpDdtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9b5fd2c-8f3488c7-713c-40d8-87b8-244078609128-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 824b87f983d4c12d3c35f1e443bfbb1bf68a48d2d04efde98a1dd651d8ff8e1e
Date: Wed, 17 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660704652
