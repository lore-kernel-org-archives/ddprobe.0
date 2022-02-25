Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E022916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645825584;
	h=To:Subject:From:Message-Id:Date;
	bh=W02h2KGqiiHQMJv5ZK9ea+Bu2wA+hRJR1KdtKMztTP8=;
	b=cXa4+u/AScvxlUtFFONfCaIkD0riUXHcM4MAzqJFxyecJ3iEq8VOREFc0+ihwt7x
	YlrQnAuOX5/d5UE3mXZ/AwVnqV1FYUOYnL7Bz4E40DAfSorpdD3WGBekUbySvNoK8rk
	/vgkuItf3ErtP1Oe9PnvwDJZJlKIKs/SbpaV2rv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645825584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W02h2KGqiiHQMJv5ZK9ea+Bu2wA+hRJR1KdtKMztTP8=;
	b=EZzDiUffqqulhU3IunVePkMwKgyxamF9bQkk0KD6KXY611KSfJNr96u9j96vGYr0
	N+k/TqeTD+WyeGsJkLUUUs8N897q1VfrGM4faXl0LM5UrM9E/sqNSIjuwMybIttjaCZ
	4PADRXnL7RbdBXf9QhJ3c+wJ/+VmPs3B5XcRcvwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32d96e95-58f4b329-2afc-464f-b3c9-32cd9fb23d27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: deebd45f9b2d3997e91f34921ca90aaafe92d8e9465b02ba99b4dc5aee7bc168
Date: Fri, 25 Feb 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645825584
