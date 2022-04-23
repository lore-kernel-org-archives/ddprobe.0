Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24B15A3
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 04:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650687358;
	h=To:Subject:From:Message-Id:Date;
	bh=vvbjooDgs0Cg4qHDPC0vHN+MVWFLP78kIQfdJU9gUXM=;
	b=W0KUO/z7ncsPaC2m6qOJiHaGnXcqfhCvzPnwsCTm2Bxb9nol12byYyvgg/Ot9n19
	JIGMh94W/J9BMc1zn5Cc7Md/hM7gvMunRd0KrcVIUUc10madPeV2RiIShtfLHWLrX8X
	Ok6AbahOWRyhfP86E41SDpQdt5k65R8lS/ZAsDlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650687358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vvbjooDgs0Cg4qHDPC0vHN+MVWFLP78kIQfdJU9gUXM=;
	b=YiwRHeZHZw5yVS2V3VOkKiI997msqkxwTAH0qGHSnuk+rzsqlxNqCjSpvLVKccxx
	AeCwEXZjNe6izZ1J3F1K1IpmDTtMcN334/hQT42HdSSpR2PRVkn8CFqATAKn71Ao4eR
	py5Tiu2Er6eUqBh7YC2BRaoZmoUaBxXqU0RCLAMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054a23588-c622feee-f640-49af-9a10-0241639d5401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 934920d778e60fdcf33c598a1a56c768dc60b0dbae42a2ac1215cfeb58e6a9c6
Date: Sat, 23 Apr 2022 04:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650687358
