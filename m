Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6931933D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647006984;
	h=To:Subject:From:Message-Id:Date;
	bh=ilAuRKJIaLbw6VRCHPhMcl7hqHAw5DTluqrEEUbnrgg=;
	b=bzCCSWe66mZF44hxYq7U131VgNky5F3YhPZyZZJtDRrUEpwCLjeuBdiE96EQQfy4
	1vdGEQVwvKRI1QzVO+1M+wGqLvFHJWk7+qqHdLRT1xgHq0a0UpYm2qN+2oPBwBhH0Ze
	B4CN7T8BnMC3JyFU4hSay6OM46Hpsr7XZNlsz97o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647006984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ilAuRKJIaLbw6VRCHPhMcl7hqHAw5DTluqrEEUbnrgg=;
	b=Wxf4ngGupJ/XP2VEZazb410wY9ybi+ZZoWWBvHlEV+mdjnTGbbuD3aV4dgS+9n0s
	v1yuqrEadd0kSATE/AnNBi/htI8+fiGIS8bZPLykw0BkTcPManMUUchQ7Qbo6jpykRn
	xvY0MdLh3Svwjr7qQxpmuRDssdozMDxTrR1jDsiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f794429f9-9965d25a-5bf1-46c4-9dc9-cbbba6827ecf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf3a0d79c1fd6430a872f10a2e07328f09975e730d127b8e0cb3623af1603851
Date: Fri, 11 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647006984
