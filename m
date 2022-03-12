Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736FD369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647082284;
	h=To:Subject:From:Message-Id:Date;
	bh=60IxPYF5a/izABqnrp3bGXardGZS+gvEmZV83ZYTE84=;
	b=XSClvaMbUmpl6VuFYQPn2g68MrQ9rG+EteNnmgwRSmZTdacQXD0fGzZXXZgvwxbU
	lcz1fGIMjIpyRKSxp0DGB1Jkz4CS/cEs2U/r7OEYexqoRsvtBGQI2slvguUvk+6Fjyh
	oP+YD8csJjcvaKy4DL8T0ldSAaZqAOdOeSpP1joE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647082284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=60IxPYF5a/izABqnrp3bGXardGZS+gvEmZV83ZYTE84=;
	b=DfQrDa42YV2rwFuPXjMj4nE+GVloeaXH3GPydGFQW7Qm7MPucwCMJx9nyGOZHLqg
	uf2vo9HD9ORiWzn6xEkgnu+EY8Usu64+Mo9mtdvpV9+Y96Z+dWTYMfK+EbS5EIQ1luR
	bEIUHaXZPKJhrHgDwnITZloO+OxpSVe7V1S/K7gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dc126e7-30731b48-81ea-4131-b2ad-cd9a0bf2ff7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d09fd03033597f8846ad6945764d255a0be7b13ae7b8e6105a335739eaabe03a
Date: Sat, 12 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647082284
