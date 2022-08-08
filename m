Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2037A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659922252;
	h=To:Subject:From:Message-Id:Date;
	bh=oExJzE+Jq9NVujhghfKs+EFbq2wU4u16jx85AlXdIJQ=;
	b=HWTxVi5/ZZEalcKMtD8tiARGrmwfYTez3dw6t/ugaJ9zHkVL2h8s2wrF8KaQeXvX
	tYzAuTgf0mPvrN0UppRY6kZjGnydeaMtPpAfA5x5+7oJUDbZ8en+gTLyhD65tf4HCI0
	j2mHWalIkqo/BvzKhCxf/O5WUy6X0zQ0j8jINmK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659922252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oExJzE+Jq9NVujhghfKs+EFbq2wU4u16jx85AlXdIJQ=;
	b=eonWKo0NlUhyQ0AELqLHZWF0VwoRoc0yjgQk6i6FhZ2I0Z8w6pCqjr0yTdaMXf+t
	Oq1gGz6SdVQEt50GfLFRuxjU9F/JFsbCIbjV8016YTLvdyqPUfmbRE5qJeIDdM/7Vwu
	lTpAz9O7GmkpRMTLh0PPXihGYFm30DNFhJC9CV/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b138354-a7aee2c6-b8c5-4d9e-8943-e70f600f593a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf68eb6ff99c2f97080df57c3e9aa1827ec0cf2ea69e0b5421bae6ef795d48b9
Date: Mon, 8 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659922252
