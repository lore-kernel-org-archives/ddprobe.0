Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587533674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646650284;
	h=To:Subject:From:Message-Id:Date;
	bh=pOuI2Nn8XftHq4lhqbcRYH+unQ9m4MaNHLHxRDDhvtg=;
	b=VHamH1YA6+dX7AIVVL/fDo5X+A9jsazSNBkQq0Hm6bZoJ8LTfRcYyObzCliqrodV
	nDh7EJOMcPUoewIs5OqQNFxkuAnh+QJEk5n+oPtb2m8JXvh8N6JAYJP33yYwpGQdZSw
	nuXnY6xEQRu+23V8ramIVhCU+2wXjXjZoQ75GVwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646650284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pOuI2Nn8XftHq4lhqbcRYH+unQ9m4MaNHLHxRDDhvtg=;
	b=K7lmQAOG7t1Xyfrsw1IHkmZTLbnRCXI2wiQ7bKbXPW7xHiZLBR2lgcqILrJhLc0P
	PRp3h7TcqgBQ1XKJxrNUqKHOAefNNiMwqD8kAZnVdgPVQgBwCdZ4k5JJ4SqntaNl09R
	NiKIFFExdQT1zCWgMY1Hgn2SNhReK/UESWilSQrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64015aa2-617654aa-95f0-412f-abb4-c29a352e72a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96a9dc40ddf0d2e6286b24fc40958e9f45b191eaf96b9f5947bb3f64652ffc70
Date: Mon, 7 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646650284
