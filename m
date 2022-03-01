Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6115C17E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646104284;
	h=To:Subject:From:Message-Id:Date;
	bh=/nMmTIQPzrDdQiwBhnGwmz6+RTDlrpJql8+j5WKcPX4=;
	b=NkxwX5IdV51u6QSKEBS9klhf7DaS6NvfJtROA+60d2jXtV0sTWNmvzHT+dT+hMCZ
	Nlar5MBKOj38v/oxkEZMEh+/pPNTOunhKj1vk/LyhbomCfThMIsD0484VAn3gwt5Hne
	pzdFilpckcBqX2WmgJSQeLIQa3w/gBgyGjPxH6Wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646104284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nMmTIQPzrDdQiwBhnGwmz6+RTDlrpJql8+j5WKcPX4=;
	b=iRVZqUTkSbEWSCTpZkOkeGNIwsgv5N85q4bpqT+h0OIsAJsbrRh4R7iumMrGavsC
	iqg+kWCxyI/VYNzkE2QoAS/gAbxhx/cgz7h8QYcJJZrXy/OPkGDE/kiuYYZ1xCZ0OhQ
	ielc9x3bJU6XV96GWW2Dw4PcB0JT7VokNH6+n0j4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f43760e40-8ba8ebb1-902d-4eb0-b6b6-da0a7da99b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e85c8eff4b3c7685403f011aa9b4067aeacb37dff0c0c9e3b44c06e58fa80be
Date: Tue, 1 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646104284
