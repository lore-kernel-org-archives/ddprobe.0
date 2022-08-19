Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725AC5CBF
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660910452;
	h=To:Subject:From:Message-Id:Date;
	bh=ax08zgQxzgOIm3ZE9hUBv2HMk91KqvPdvTmkM76XrwU=;
	b=LTQEaii3puNroduXN4RMROMeY0kMQm6ZNAgYnIuIViRWge94tVd+ovsjcAydy8r/
	bDZ3B6kDvm9/I295dVvt+2pcQ3YDID33DG6w8FTi3H45BJZ79jDDZdDfnI9yJ7YNuxc
	gb/zB6vo4KuAaDdPtv/iKaQ8F4Ffj5wBwGmWYLXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660910452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ax08zgQxzgOIm3ZE9hUBv2HMk91KqvPdvTmkM76XrwU=;
	b=NHj8N+rkdA2qlU5Ul2qPrER138ybz2off2TIqFDJwH9ZM8/zHbKhEsce98bBKa1t
	BW1A1jWnm3ovOLH7W+4LOStHeYDE3HmQUTv6K0843WLTOudnn4t7PRA4NFpOMPd9mxl
	3C1A6FaofwAVrJqlkrRitgFOVFniMzHVeCRPbwmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5fa3f4e-815de6ab-adbe-4f6e-ab10-8db8a9780ab6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc1c3c333fa569c60e2413631fdd8a0b8c4b0722d2dac19987da1e384749349b
Date: Fri, 19 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660910452
