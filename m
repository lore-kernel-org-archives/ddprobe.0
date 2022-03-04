Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAAF7E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646416885;
	h=To:Subject:From:Message-Id:Date;
	bh=bXm6/A2GiEXCI0MzqrLIVr4Xy9fv1L8ZnEfidq7+Pk0=;
	b=S8NoCrW7Uo34swJdVOwfsycWJKZHsWlbPJrxQ5fz3SxfG8ZC3dz7oQIbNJFS8Dj3
	zgeCrxzO15S1Ms/bwE+Ekj7Syj9UITfrkxmTKQNaJgaN54WAkoRQttC8ELgs3cgFfNK
	GvKqVl0B9Fq1RvJMLM+m8z7DfA8YKGy1leFOD3eA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646416885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bXm6/A2GiEXCI0MzqrLIVr4Xy9fv1L8ZnEfidq7+Pk0=;
	b=gNFVMqrNyM4/KWX86u+tpTiVdSpxqdBBBs3Sfu5i5mhKDNRHwjcXWH3piywQt4Ts
	KI//qpBV652caRj09Q0qT1rIUFy1SnZuBoI8NHtVwp0m7RbF5DcjlAtS5RkjJNrz0Rt
	2tE2yeU1U//WXmLKMXkkBdZr52egD7hq49UHnzog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5617f42d-97dc7f22-f3f3-41e4-987a-bcc488b4bf10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15dc647d531987b4aff5a60295ec155e42382762d73d15752263e1e777e34dfb
Date: Fri, 4 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646416884
