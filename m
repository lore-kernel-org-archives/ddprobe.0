Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA5B53BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645286485;
	h=To:Subject:From:Message-Id:Date;
	bh=F2JneUh4zi2V7yfPAocnv8ONRJpAcA4oUge7nZFpewY=;
	b=Z+1v6MYBGwB/wLML3KweZH+Ayh9vBXqDKVGDjMOZuwfTL5l4r4JXjFVHXlkMTbjj
	8RZs5wYLbc3qaugi5gMIkBy5adyOlsaZS6hsBUADNqUzjCH6ktJbRQtd2yaZ9HYHwKJ
	gpfDNbylUESJrW2nR1IkoRCCkzqy3UuprSsgcUnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645286485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F2JneUh4zi2V7yfPAocnv8ONRJpAcA4oUge7nZFpewY=;
	b=hbrx6d29HZso/46M42X9xv4XOodGJ9Uy8JCs2S9XYObfSNSiMrobD/xuEh8TJYpR
	mDtYmI1+bghZjUvu4WHUkXU+a97OCTjzDLt1h6ZnuKBbiapU8cpT8JeDYxMN4lHbhFP
	uprLHd+AmhbtuVwVruBQNObEyYc4DaJjgWVbYTOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12b76b3e-cf181455-9661-4122-adeb-b14bd29c149c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2de0ea552365f19828076becf10cc0658d7e91f3953ca45e5beeda9668696c57
Date: Sat, 19 Feb 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645286484
