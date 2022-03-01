Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C725757CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646118685;
	h=To:Subject:From:Message-Id:Date;
	bh=BydTztynMQ41/8dqftAkjO52H2rL7Fzxir8+zjMHPuk=;
	b=NyggwYzhk8yPQRYM5fOcwyVx+irR8421pqZTTP5ZBVMTuWm5JPtmBv+TTh4hEAsY
	AMmKtuU7LsQPZ7PtqK9n1lnUm2F2PTOq1e2bTAQm+3YTYTVzv2ZdSMTVYFSsneWXb5D
	chT7f0l4AkcQNXXkEtl4hoMTl5TqRgpyKHXM1GZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646118685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BydTztynMQ41/8dqftAkjO52H2rL7Fzxir8+zjMHPuk=;
	b=R3kUIP6tYICVuk0M3+/2rifxtmBJ/Wf5FauqL0Zaq/e62iPgqez9Z4aiPVtmgGIS
	AsS1WJsm+5TBQ4+9BSYkZtFvFkpPLTJu5KPMZg3AKIe5FPV1NPBfTr5xv1wYwp+410R
	wmPe2e9lggSC3aRnxIJGjhgDp/SXZf87H8c3pjxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4451c837-7e824f8e-c811-4e57-8459-8ea460a1f666-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 065a94295d70abad126dc6460301648a7a75eee6d1906c1bdbed626e1115ca83
Date: Tue, 1 Mar 2022 07:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646118684
