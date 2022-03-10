Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138EE18D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646934085;
	h=To:Subject:From:Message-Id:Date;
	bh=gmV1NepMdyB9AOX0R2mC9B4aKA7udU260tWyybGC2QE=;
	b=ff0iGdsmvuS7y4kZU3rTjrWJOV4O1gGRzTGVRyFaTjq1wFU82SYhI39XEzujcOo8
	/2pjCEjhEYtweY0yOktZGJhTS95qV3AdUDA/aLx1/OMDpX7JCHv/FtU4ez55Zp9CnfI
	259g+Td0ekWtbQYAPzPxFaM6SNxIqNcm8vnOvO5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646934085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmV1NepMdyB9AOX0R2mC9B4aKA7udU260tWyybGC2QE=;
	b=lzJWfDDuCOHTBjtTkT4O+/8bMcPPKRXDBdk75KuzYvuxaH05puQmpYNqcPhciJmV
	525Jk/EPtrWGyXpIhME2/3+Pg3qeRAQEKBamw6YXfJt9BVfZ9Wz607pdvFgj5I1GLxW
	1/6shNoHxSDFZBjlXBoeCvPUDlq4zFxkTt2TLEc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74ebcca6-863d64ec-1b8f-41ed-9f1f-83e089d113d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51f5a0c7971794020b755985607290df37959c0fa3ca36e46a44e32514f56f53
Date: Thu, 10 Mar 2022 17:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646934084
