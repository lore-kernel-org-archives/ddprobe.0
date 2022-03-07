Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CCE38C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646638884;
	h=To:Subject:From:Message-Id:Date;
	bh=7xbAcjLuZXrX24Gv0k+dCOJ3BMqlkTsC3C/yE9UqN2Q=;
	b=LabwH/ldGlQCa7y9ttT6j+0RbH6h+hAyJaoKcwKseIWdzTvMVynN+vHRf/zCntwl
	9CwQrn4/F9SuAqN48RgBegrLHIh4NZv4+83CFPqbnbjjQ4OT+Sc7sXtFIjXra2YCSjt
	0YgZVlHOAhq6AzAIjG+pUbiK+yWqQn1EY6P7yldE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646638884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7xbAcjLuZXrX24Gv0k+dCOJ3BMqlkTsC3C/yE9UqN2Q=;
	b=EtiUFj+O6Wd8IDz10/FqKHjYNXkCB+4YWjMKxKX+qt5zK7K/VCxcnjFlrw+4HVnq
	3e5s127GLwtqjgq0bGgdQsR9omM1/RFK7zpqJGDd5Ld7Ej+HJdK7ecQCLNkE6uOFlYw
	v/VUWQ/WBFDW44iTpqcS3gV/52QSqC3/wuPanqhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f635367d3-e41421df-41c0-4a4b-8538-c1371f8ae424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e1aa4dfbe1e0b426dcc987515ed820d1c3fd9915efe5b89878c15c004d465c7
Date: Mon, 7 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646638884
