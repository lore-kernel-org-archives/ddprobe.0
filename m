Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA495C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659301852;
	h=To:Subject:From:Message-Id:Date;
	bh=UwSjaBPyhhhtnL9MMM/dULAOBY+tLfotkUlcnnmAmss=;
	b=S0mBzt5MzzGFBXqu6zJd9uriA27MxEL/xZ3O03LzCrJatFetVBwk0uDvnOvc4rXC
	5VZp9g9OA8Q2FODBNyLXsdtqZhUBQBb0zITp0aU35gFXQuxiqAcMaheJ4CDCFZjtK/Q
	PVFp5vI2nZS78N1vmFTOqFcR9z6EDTBg1ZdRHdhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659301852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UwSjaBPyhhhtnL9MMM/dULAOBY+tLfotkUlcnnmAmss=;
	b=gDR5T5A9LbcEs8qgVRp3yPK4aO+ht4Qg3yXsgl2pet3nRqaa/x9I/JN5BgK6VbyO
	Ckn52Z0X/YwKO4g4gWNkmTm85KYkQXHi3Ab0aeIPe1oWdUl2rhWTwY9RGe+u6owjqf/
	N/l1DDHyXeOi3r3gkV+1kghJSHKyJ9dwOQWnKGUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825618f56d-8533bebf-37f2-4976-80b6-d489446c4b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a33e8b4db89e8841c291341e9718964fabe7d619dd35a27c9439269ce139c88
Date: Sun, 31 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659301852
