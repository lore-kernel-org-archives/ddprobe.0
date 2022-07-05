Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDC196
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657004812;
	h=To:Subject:From:Message-Id:Date;
	bh=TcaBiUYCP5aKbpHEG23/hf5VI8aqzgdoZKIZD1B9hWo=;
	b=ASOXqOZtSsg6a9/sdnaSgfd631B9Vm6DQySV924meOB4pWdDBYz4lyqsGjE4rrOI
	xIWGKS3sj+PYD0qfIihQaNxS/LuoNpg8j7Q46IW11z1lSKGrmpTQoRdzl29vlKfi5Pi
	sq7QW7N5QDeJL7oH1uzkDHOvYMpBnXDdlqjiPPu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657004812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TcaBiUYCP5aKbpHEG23/hf5VI8aqzgdoZKIZD1B9hWo=;
	b=hrPElpWidd4lJGY8bSOD7NdAIOiWIZpStup7unQvjQjEL8TfM1mnRtV4HJIQv9TM
	Hxvf/h27Aj8ihYcPX0r1CkjGBi78bFvcAkFAqLA9gd1JD+LmaR2uzWk0GuEn7weyZKg
	Wa88rTHCAa4rLOqFIAo2t5nHWRQMlHJYnP7+/Gac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd2ee7d4-e03dd929-9e11-466e-ace4-b173aee67950-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dff8a87ae326705a941bd153714d6f7fa5372eb1aad2bc041b0ba0b23554fda
Date: Tue, 5 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657004812
