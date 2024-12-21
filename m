Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360401DA3D
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734743754; cv=none; b=Wem/YnCQOUNjupQNDf9Sq0jjJ5oB2GKA4j9X3W7sM4jj6ofxBC2xDAa9Wbr9I7GbqlfyQREjlUTRi7DZfhFpXHZ28v+c9qtIsDPqEzTaxew3gDmPMUR+Cmzg8x2Xvwbpxnoz/4dH/PzGO9o76xT+kn1cF1YEgmay69nhs8w8PLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734743754; c=relaxed/simple;
	bh=qluzlCKn3t/XOLYdwco6DKg4QhPYWXf/tsrZTmwYHVY=;
	h=To:Subject:From:Message-Id:Date; b=CxRbpGNu6YdKi1ncOFKZSR16QkDTuaJhUK34Urtoch+j2AjRfHJlZ2rDMBtAXesWjZfcCiQlK16zsGV34QK8oajGGhyihbfqglaGqmr18scTcPT5Sx389jFW3/5Z39lJwp3b0Lg98RmxANzpJsgCVEeVrc07dNEu0B7x6yTA2Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogFedKLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogFedKLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D56C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734743753;
	bh=qluzlCKn3t/XOLYdwco6DKg4QhPYWXf/tsrZTmwYHVY=;
	h=To:Subject:From:Date:From;
	b=ogFedKLq8YsoxsRMt9i0Zm9Vv6NVof9ARdPsTbR7a6qO+5bVMTE4IDAiQliMR9OZt
	 IhmPC21LB0wzXw0wil5DTYLPV86k3lUixH3mYEuiVF5Q3fpfdP76A400eDmYusvltj
	 ovl0kJBL2fQpSw7RSDbeIe1RM8sN00e0h2eOeAHTfmbZ/r39nMj1xvzW2JOkbpZy5x
	 fu1wF6ORS5LyBghLmCiCFhTsXbKfkwf+Xsbt0hvUdSCnsnwL9FqyIeZm9Xf847rKOU
	 7bHvB+iEAKri+lXTnvbVGtX926cMOHpynd5A6ZrjI0J9HCWIsBmC7W8Yg9wUEUVijb
	 oTrZiN54MIF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD12E77188
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173474375360.17356.4398970523344618664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77800665c90369581151e5c297eac997655e5edd96b951c2715ccf791e5cf780
Date: Sat, 21 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734743753
