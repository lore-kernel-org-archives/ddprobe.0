Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A9D2F26
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659829252;
	h=To:Subject:From:Message-Id:Date;
	bh=RSkG66zV2kXZeRScBEJOyV/jRzE6LunmLYBU/8mE8fY=;
	b=QbAtJ+HAfsSMs+7HS5aPfFdJw1UvNobm5RzxJV2Q1jVUOtM9xvNLePfmX9W8oESG
	4HnpHM6RHWmbIZrt157MJDLZUIbzmq/jyMcC4fhGutMS0wXhT1sIHdWexX0OTiWDlHX
	30vzkQ6Lug2pq5xYR/GBkanclL5Cp1aTgUA8GJNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659829252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RSkG66zV2kXZeRScBEJOyV/jRzE6LunmLYBU/8mE8fY=;
	b=WUoP94SMJVD9VWN/e4hxyS000XGaK94i+cGjd4Z0Yexm2EJOEl4ECiQ1qMNF31A7
	uj7PPigMBapd9/SgBPw6VeXgqNnVAO3U07y34RttsWnWJKqJ8hQlpqZAqAWr6sJLiQU
	5C9o5MfFtx2U5iwa9LeOnbVVUTQ9HLbC1awYEvpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182758871fd-df91ba44-b921-4d51-af8b-8ba737a09357-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70e3639d97cb170031c042f451130c0ca2fb1dfb4012be06d07ac8a44ee50f96
Date: Sat, 6 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659829252
