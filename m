Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B036674
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657201612;
	h=To:Subject:From:Message-Id:Date;
	bh=mdqVz+FFjbrArAWOHT3D5u1YqlRCw/quZi6gwAN7yxc=;
	b=iEgI6L5T4pao7rIqSN77PyQO4j4/erwwZWCxcN45UvjyDbwVx77aQvkEHW/f/T9b
	5BXqW+u/f6ARsag7E7a4RjSGJeRJpksU04R6Rb9RLEOi5IOZsQSoEDG/Af+qaaxqCFD
	I5pRSIDFmALQV3XXdaJvF6Sl8+o6F+lgiL0XLwHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657201612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdqVz+FFjbrArAWOHT3D5u1YqlRCw/quZi6gwAN7yxc=;
	b=GRhlEmUcjt5C5zfXrCSZMPU0+8b6Dscb0X1cLS6+peJ0a1TuKnW+xCSLYmLS9J7c
	yLmcVKeQ8BeNLS/7ozIF8u6FEJydKcVg5BVbQfhNSPCXSxqVYQ0I3MxcCSf+jb0LobD
	Z83mTC9MdLf3K5YNuC4q3tnSj6d7WFhw2gUwby5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8e9d627-64c15f7d-00ae-4e09-bebb-99be63fc5ff1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e930ca1bf467013dbb1d3fbcb78a81d768691e757fe5426d20e3ad2af23fd2c
Date: Thu, 7 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657201612
