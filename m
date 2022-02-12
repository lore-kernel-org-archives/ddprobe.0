Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFA47A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 18:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644691262;
	h=To:Subject:From:Message-Id:Date;
	bh=NGUXUcFR4010XS2bqIwC/8nBQNJnB5HewpkSsokG7rY=;
	b=iGkUGNbFw6LJ3VlH8cfontQK+gVCvOtI3kSfwJcNFJdkT5bNxmJlqjgUe+cNHIIS
	s1OTV5bRpLAq465nbSkQnMys1P9/Qh9Gr2okTdbeZJSFeSTKbid0TqM+NXR87tPMKzO
	q+V0WOK8FFa/4iQeOffJEJ3sOHvIgZV1NT2p1pXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644691262;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NGUXUcFR4010XS2bqIwC/8nBQNJnB5HewpkSsokG7rY=;
	b=XjXCw8Z5v6ZLjYcf6RbSORgcOezVCTBck54Z+OhkDvdVrsnM5tgIh7OyK2mxHDRp
	5aoEKNsTVXDpn25ddcQ95WMZnvTGnT5UhuLklcXKZmdBxrZAGDCoOrCbT5CpEBTAeMi
	Q2NBBy21R6udqlVYwPsFFXumT1FJU3rQEtzgjsd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef3d0a59-2a5aeaf0-58cb-4eb5-ba3a-c0825561ffd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfc67dc95a0e55a30cdba2d9ee323d8b2f4d0817678851485e52df72c5771572
Date: Sat, 12 Feb 2022 18:41:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644691261
