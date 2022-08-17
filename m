Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7018E53B8
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660758652;
	h=To:Subject:From:Message-Id:Date;
	bh=lYXRpGZMedaN8P07CXIK2LkpyJ+bm+GYXGOSnL5HpHk=;
	b=ZRDiQlqTTgUWLgzJ9w7xBUsCliEy0fssqiCjz1KQh9TeFwu8bL/uP/1KamOcbb8O
	vpm64/UOkq3Abmb40Iq2Ya+RIUHbhLvoM8Y8bgu1OwAY9n+L35Rv2t8vkVV+vKES5xJ
	TUhsWaCVsDgwZE0eV+JDgmyl1qHO5FY6vL2Ua6kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660758652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lYXRpGZMedaN8P07CXIK2LkpyJ+bm+GYXGOSnL5HpHk=;
	b=EQdwwGori/ydBl/s4vFjVw9YfOVXruAw+p4MVkaT+wOhH3uDEs090gFqMlmtITnj
	Lr1r6iZMIMFOg9I6qDq3ABs6o46q9I+SB2vV6uQxjd7g6Esf7I+hE8Mag6o4GacqCOq
	6QBEHBUQkXOwzc0qjZUhcdcTeWAuXA46c/XtH3ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182acedf705-9c3eef72-9bdb-426c-9429-fe9f590e59c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f16230e7908f718848d7fb82e00129fdb487ce86e044a57470a7586e1bfb731
Date: Wed, 17 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660758652
