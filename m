Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5837A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657699012;
	h=To:Subject:From:Message-Id:Date;
	bh=zTm9i+FYhuW+BkKAGJKvoG/mfv+r9kWdgXuRZdyoVvc=;
	b=JDNIO5acGhFRs4yJU5I5xOXH+cUo0Cxv/NCC/J1VK3QWb1kY4OE+DfbPnYn1pVa/
	SkvA6xqWP79l6dqXnuWDB+NX0DPbS/8N1yWxdjXGTAVPKfTwKqeOQOxx69dORGnX5BB
	5ZklL2CJXQUgsDeHfWelc4AeAxXv5VsJMenzaEnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657699012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zTm9i+FYhuW+BkKAGJKvoG/mfv+r9kWdgXuRZdyoVvc=;
	b=OnkXeLXXhYNKdRX7D7petjzTEaE1WLchJWDaOY5pUexj7ajQqDX6kD0xlW+OLja3
	fiMmh4dk3MF+vJ4L/aKOAtuACxZ66tfKSiqqVTUK9zkt7dXlOh1U4d4c2tAPeAP4rOH
	S/7ljEQ+tFA5Kf/Z6bibu9JI0yfEvV2rt030aeqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f68f8ed5-6a2a7148-9073-49cd-8a17-d38ec0263ba3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca5f6a1836f3e24c714383485e7d6246b95d15b90634fa37e627763728847b53
Date: Wed, 13 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657699012
