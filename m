Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2367B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660888852;
	h=To:Subject:From:Message-Id:Date;
	bh=5wN9dGsFXD6HqB2Abw0EotbeSniZNY4yQWKsM7uIBA4=;
	b=CNTWt0tiu0C5ErsyfZRg5lFhGJRFQvlU/uuxdIGR7WovUUQkhh1AuZ9Hut2pPHaC
	VyFpv3D47uPVRAQm5J8cOcqw0G8qmN1XByQPQB5RVwRgwYk+N/6S23p652oLWxT7bOj
	4b7/jr3GcGUipGs6Xc5qIG6DwKhZp/+AfJ06MZ0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660888852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5wN9dGsFXD6HqB2Abw0EotbeSniZNY4yQWKsM7uIBA4=;
	b=VDYlZVW2EQJ7UEMohHeYGdj7ABT+Mq5KiIQD5CtIMq26HrkWVEN8ulbB34Hrd3BF
	f2HLfi8OwkmVZd2upIQdWIy6T7GzH2T6FhTflEl3NNZoE0pbIbnl6fe+oRLI7jjnwUu
	BYtQA0+LO3ffrIR3kxN8bhPx8kXdqanDsiHReyEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4b0a83f-ef602121-db40-4ad5-8ed1-99f3a17e8a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9701b7035ffdaf8a5068c2cc4890bff2dae87d3bc020fd57e9f8413d3946e3db
Date: Fri, 19 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660888852
