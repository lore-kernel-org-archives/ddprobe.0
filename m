Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078A33209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656422212;
	h=To:Subject:From:Message-Id:Date;
	bh=zamzmTmlPASl9vV+bIi8oLv23bsE/Eh9ZXkGiLcEeYo=;
	b=D4Ed07bSEBofXoIILi+BV6hl+00qFKJHIczNzivNd3CEJN3z+ZnzHlnUX8oWSyOj
	JaVrbDJqZr1qdkthCCkCbhK5NOUtIVBKDx+v9uqxVuOR7XP8OAsllBq5QvxoVrldp1O
	f3YA88FOsba+Wc/eLlGahDzukP93rTGlvO7MzXs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656422212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zamzmTmlPASl9vV+bIi8oLv23bsE/Eh9ZXkGiLcEeYo=;
	b=Fu4beJ7WmI6SlRKGEBujxpdhLBBPYEelK+CEQGg3sTQg7lyyYQQeZA0IS3z2pTHS
	qx3wqn9OBOeDScDNLgYvdAXej9TpcMKVdjGis2DLfDZFV1xiV7TZuX6F43JZ6o7ndwz
	aZOMpXcuMjwAFaWtMSsOZRP6OcHbZ8VqdRKnHYJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa7522ce-fa82421f-c08b-4d60-8195-3b796ae143ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22ee61ae0df60260204f5d1496e153a10fd1356220212b773eebfcc5324488c5
Date: Tue, 28 Jun 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656422212
