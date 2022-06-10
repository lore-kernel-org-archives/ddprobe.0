Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FC4362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654836479;
	h=To:Subject:From:Message-Id:Date;
	bh=T3zY7LoWUj/IAEyjkd56jkO88SYn8fLWtb5Uch+gL0Q=;
	b=Qzzzg6mgn3gvkdA2+oy/bTf2qJf4l9sowzbgiuCefZQ1N9IByTncK8o/nOx/ao7b
	kST0p36qkBL8fvmJP3YZd0iaprXHJjwlsPXxXjGdFC4BJPpoj8WOPDGPcxfdPENVUUY
	Ah2YwpYwIPpK58tXoP7vKKdzP/JwmKv/AufsjzsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654836479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T3zY7LoWUj/IAEyjkd56jkO88SYn8fLWtb5Uch+gL0Q=;
	b=OBBbpwCKBLNQX6cwtvzFjqD3JP2Rc9b/nuK4eRKc3GfO+lkFSMsVBA1SKBY8mnlF
	hOYYbmct4fGRU6sQqklE2aMONLbih+VRiBh94jiVHT3uDW7PBP5XJ51OEnPPzDiF/ir
	0a6sGqd06kKDHI2hg6gAa0rxOZkN0gLIj1KnrXpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bf0c552-8289bf95-54fc-4cf0-bb73-b2a1142521d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20b820005c08f714bccf03181a7212dfccd19c657812ee8432c6b1e634e6652
Date: Fri, 10 Jun 2022 04:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654836479
