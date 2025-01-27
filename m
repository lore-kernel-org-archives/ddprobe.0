Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44879191F74
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738003554; cv=none; b=mJtXiqTx5WNZyoHSIiFuAhEc7K8JXOpSmWuRca4PA0jmGKBjaOTLT9j3oAciX3q8c2WfvdgHqEVLQUakUp5cH316syK/yHzKFXgb6auCrvKIa0Ic9RVxhzIe4wWcFWELSb7sjEEM94vwte/ti3gIbgnE2R8nqJ9M2vmUl+JYA5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738003554; c=relaxed/simple;
	bh=Hbgxbc8i1UXsOqzZmKccEx5gv0+55jB3r9zbzThNJLA=;
	h=To:Subject:From:Message-Id:Date; b=kQEFPlkgFlGo8bT4cO9frd2EPm+Ibc8AjDHSOSjlV3b4j/C1jtcS5BH5W0pE0/yYUNOlZqKE61Y9t8LF5KSnI0eKXx+QFyJZe2nVvFnZK6fJEoLV0V5TAveVac+y/42athhGshu1yebjxK/IMxVEtX1YjTqVfN+Iey2JeM7PXJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwWYxa4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwWYxa4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C564BC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738003553;
	bh=Hbgxbc8i1UXsOqzZmKccEx5gv0+55jB3r9zbzThNJLA=;
	h=To:Subject:From:Date:From;
	b=TwWYxa4OoD6tDFgCthNjJ7VsSNW2bwqEutRvUDZ6WEMSi7f5E178YRaS3QOZ8PKTJ
	 6wPQH9uAUPWkCaQGwhAtqrktOPg76Cq8QrwPhDRTYJvpiza3qUuiyu23YbDjixzURS
	 +jCjMspquhvHwlkmGNjTsEo7eujFSLBEuttB4q97JfWjSmLxp1//Vlh9SZs2EzlRf4
	 DtIWbdhBmM/oeKiw75OoOSptqy+ywaL2YG9RjybyCxQbKu6/FlbYGf6fm2Bl4Q0f4p
	 4O5AOX1M/Nr0qs0hEy7ITB6/dYPNqLXVvij1YzPNrntjt9MZpbtcXzW8wFYEiRqgL4
	 MNlFlUwJZrg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CED0C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800355361.16553.13544013267312485811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee61f76f163246038545af8562588ee5bd84a33dded84acc770293a0ef45963
Date: Mon, 27 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738003553
