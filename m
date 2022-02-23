Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626147E4
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645582884;
	h=To:Subject:From:Message-Id:Date;
	bh=kTWI6P0VAnw5qjMFhWOsujRIxeYQLTqfzWWUdPcM4Z0=;
	b=grvfuEc7g66yAygxIgTYFe6DxrxzOs6Y1GKgK2jlSxh35breZgUfaYhIdfhwA0Pr
	ZKM7P6PnxerT6+L7uFd6/UuJKz6IN5Rrg5Aa5AV/DXBvvNbEGUkW2YETygM4AIxLd/1
	T160fCXsmAKQIYFfn6ST4ro2Q6UVdWWkLompA8Zw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645582884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kTWI6P0VAnw5qjMFhWOsujRIxeYQLTqfzWWUdPcM4Z0=;
	b=FgtZd9KQpfmNpJqEKlH0C3srehLBlgH+a0U5EHEPNF2m5KnN2dmbSukH8o7ElaFr
	CFSkYXuFWXbl3XlLe+pA8DwSNcLtbryG8SYvgeY7CY3E/p0UTPJ/gHVcjpu7DuncmyB
	Pv/UqJAo15yBQglBrMtrxR/Kq9jl4FBEuAuK0A5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24621fb9-66695ca7-36a7-4489-80fc-44c9251c27e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e784b07b166f1e8fc9d5a4f175c5364ce4e975283c691ca4491b2079c45ee71d
Date: Wed, 23 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645582884
