Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2145127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646862084;
	h=To:Subject:From:Message-Id:Date;
	bh=oM+6BQPxS43sKkBdpcAungWUnUBiIxIi8C7QnT1kskY=;
	b=RjoiOW7TTDaK+bbixFApSWgVPbc8inQlXBzSIHksamfR4I4THrGO41hz9uen/fxe
	dH4r9uGWJ7unPJ7+nkYx2F36pM5C+1ftcGTUvs+2LLNsJAeW7JNwht03JqLGTFBojKi
	ux/P7UI/vYK8c0eAwL0srqBmvV/ETTMWUC7t+El8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646862084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oM+6BQPxS43sKkBdpcAungWUnUBiIxIi8C7QnT1kskY=;
	b=liorNhOg4wSvSBdbA7LsQYZFax+QgfiMyoyLTr7EocMTi6kLsLUK7qXGnuvmlk3O
	li4iwU69oqoxtVK2ZbS8S3E52Jyxmu5g9S3A4K3OaSFKDW4r1nWQR3qkphVP5ZRN+us
	2jJIe/zo+bUh/OTK4+jn7AuiCAFSuaycxVst0sMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70a12ac3-67789504-3686-4054-92fa-4c6416ecc6c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2942096cbfbde3eeeeadd439c760530fa0e1f56fe69d0b8f1cef496380c2fdf
Date: Wed, 9 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646862084
