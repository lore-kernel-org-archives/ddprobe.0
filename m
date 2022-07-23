Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7807E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658614612;
	h=To:Subject:From:Message-Id:Date;
	bh=lh2f7sVNO4Sg7BuZSKe3DrBgbZrkgH11Jvbk/2IQFxw=;
	b=WHMEQ5XdC70LBDOFnoru8JPihEBMqOiNRfjvl2AQYy1zGPNnR2eUkeo05SJCJBn4
	D+D+8s+2aecF4e2laEeXNXbuNrJsSrDeVpQlWd9RLeuLEmJtG4dOUqx1gHzR4U/vdq+
	quJ3MNCgFXylZuehN3lg5g015KFeahLzvQfOb9uY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658614612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lh2f7sVNO4Sg7BuZSKe3DrBgbZrkgH11Jvbk/2IQFxw=;
	b=SY3O5o3UgFY1BIq/a76gPhI8vdGf/efKOIHzByjyR7f4btZjCjJVqpiTtjDIjWOi
	BS7EiDxy39WyNOu9IGRhfFsCwxYQOcaxqOeGS7bepNaX3rlMeXIIw3uKR3+b61HG7cL
	/CXDcx0MM2+2nL8VTjMPtXCNPSZCbusOXA9UHkqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d228138-f8895e39-6424-4070-85fb-a2562c8694df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8156d6655e04101d15d27cb29e86b03aef22d646d08b140a8d37604025952205
Date: Sat, 23 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658614612
