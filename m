Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C15110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 07:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655884559;
	h=To:Subject:From:Message-Id:Date;
	bh=08OMniMkDn69TxDzh5cRtGovTesgvhPh0HLcXCi4LUM=;
	b=iuAh6V05UJhqL3IA3s/VHFcF8XFhbyZG8ky8zn8DOqK0zwS1jAhjFYrWmA/ja3Nc
	3KI/GbbuIUCu/dVre0Z39Ek0gCyGx03A8QHBn0pyHikdPqouurwTQDkhxYh9QbuCSFn
	qjkfTYCcl7qYgPD2oHbiSmvkux9mq9gYnjVM8b0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655884559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=08OMniMkDn69TxDzh5cRtGovTesgvhPh0HLcXCi4LUM=;
	b=SZ7motWbGiAaajNThJWI+jZTMqUwjWym9223YFBBXJRWZJDJKqZ0JuEHrXQcHCl+
	uf6bcPWsfAUDZagTeywwxagkIvYw97AtUxT33mUJiaNUKdXD+YZ+71B1NSW4VZGHrMc
	dkXjTRKdSEoaSNtPZExKA56+Z76IQzt3n22lH690=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a693392-a9461264-5ec4-4c3d-bef9-d704c7125f66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e5f817eefbd362a34d2dd9f5cc4fff3b22f1a5669c131acce8c4869b1eae579
Date: Wed, 22 Jun 2022 07:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655884559
