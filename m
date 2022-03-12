Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36FC2F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647077785;
	h=To:Subject:From:Message-Id:Date;
	bh=5IuuqnflN0ANvwcY0WEjJsEyL2RugJHT2HuxS6riHrY=;
	b=GaqAnmq5acgrzoBF6EpJLuuxJJnhfcqX4Vf80Zn7Z3CymNebUOhP9bk4/LUzBFqC
	1ocH7r2DDhTRDhStTUxFspaJGSOJaOM4pnkZXcLvQ6b/d7oWUE2a5VomUzugxVRfcN4
	9DgIv+S5K8qpu2TGkGnTNX9ab7AGDpkgvg7ecYLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647077784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5IuuqnflN0ANvwcY0WEjJsEyL2RugJHT2HuxS6riHrY=;
	b=LMq3gSlI6r2Ta+nL0B/F1uum2uHYrkgIlM/6xQOavh4fm3VeZBtTwDUwCcyeT2WQ
	h/abfTWKDyX/bXQ2WHmQJHivksSa5pspsLxZMkszt41PVDEmS4/YI+jp4jwaYCE4vI1
	l1tiqR5PSaHJqZNmvAXkaszbI3/fEjg0/6+lcH1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d7c7cdb-6c89c576-fdfd-472c-8c5b-a593d92f3672-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c4c17506de8c0d0d17aeb67d79b16f382e89801c97a41e91f87a7956069fb81
Date: Sat, 12 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647077784
