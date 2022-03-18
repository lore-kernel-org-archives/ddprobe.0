Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8205C5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647630685;
	h=To:Subject:From:Message-Id:Date;
	bh=wJ7Fzzo2eB9JFcVHcsDiKzET92Y4d8+kgbfYFTCrGdQ=;
	b=Wz1K5c6dX59SDYCuP5jSmHK+km8BY9Q6HhnYiYT3O/vGG3gWMTCu9y38RTv2cow1
	WapasIYu5lRf0hI8bLRw5DBlGOHieH8y8OY8rP8kIyoPtIeJeZo+WTkuE9a36Y16l8G
	SGOcRfZAeqoEYHYSXUwzubwebl0Z5iK8FO7eVVRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647630685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJ7Fzzo2eB9JFcVHcsDiKzET92Y4d8+kgbfYFTCrGdQ=;
	b=CXG6npnlFDMFMeU1sint+n+Prv+ZyTDKTeXi42yzQhnpokY7ULDRp3XILEd+CQn7
	A/QStILrEJYf3m8VPfU99hW2MxLAnb7RjlBsSfIqcKjZIT0YYm/WhjaGxbTDKE7Sykl
	91yrtA6mNAhfIqh7nU5zzyI+4b6YpqxuafBS4vOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e7112aa-83af0172-8d3a-44dc-afbe-d72618719326-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73fd35474cf75205412af7767f3188a604989139b412c538a13754e4d5c4727e
Date: Fri, 18 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647630684
