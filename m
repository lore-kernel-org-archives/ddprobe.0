Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AA0179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645341084;
	h=To:Subject:From:Message-Id:Date;
	bh=6GNmi+ltRahlz7PEtFL+v0ba85bWlL0A6qgVN17F8a8=;
	b=G/B7kzMq6zAsb5vFTRQoFFuUKR5R6hYNnzhTkpwlWtgE9sbSIJPQZfieOeN1/h7D
	AKk4fyHpeBna4DXqe2HlPqVH+WvafjIh8Z8mW0G3YPsSUXdRjW0PxuLEj3SJ12Wr8jo
	8zjqOtSRXCHC+UA1bvz4TwGW+jZMSM8wOp/L/+LU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645341084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6GNmi+ltRahlz7PEtFL+v0ba85bWlL0A6qgVN17F8a8=;
	b=bl0tgCEmy57P3AcGKvRChAouE2CnTJOPOFHCMTYDlQ2SYu9iZaxo4lkMlRA5NiZQ
	hNAkQ53Snn89BqBaDFX/ThrwEUPlfnzOdUu4fbkREypMEJk5yiuduwGugXQy4PVDue0
	Jq8uU+3gGvO6oJT5jYgBLKGC43IRKaoyO+8Fnu88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15f88c8d-70e167e3-fa0f-487c-96c5-070c2f502121-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d06e93aeccfe55c2dc6a4c8d6d07b97eb4e954a899b4471687f917e92d81091e
Date: Sun, 20 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645341084
