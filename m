Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA1E29A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 22:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648592818;
	h=To:Subject:From:Message-Id:Date;
	bh=M/pJUFS5KMOQx1sJ6r3fi9sTngHYCpUoo4PIrCTJWUk=;
	b=fIzl4BGHiYbI8aS3UeI/TtCaDQ55ebBMD4e1B7wRRiS9z8oOCCl0e37uJr/SQHOm
	Rqvsno0ErQ+yqssPNu5fu4Xyl8ppYMA+YokEvoPVba37y3Q1bHIXkAyJuFAJu+6xpIB
	ObeSkYwA8IArglwhLlQSxPAvyE8Xl4uRDHldvaAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648592818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M/pJUFS5KMOQx1sJ6r3fi9sTngHYCpUoo4PIrCTJWUk=;
	b=GjZBvvk9cSaCEvOxmFZUzt+qHg+oqcL0pw1YzWVWZi3NOj0uw9Bm+3gUEAxpSRR3
	KqMwiZu92zOiNB1nJbXQGKW27tKSMmTu8LNlUObmVkvZBROUelcQwafofW1hkixzHkY
	DEk05xnBMFHvJJwySooRdlqSJi+eupuzXgXJRdX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7ca106c-373e2300-9361-4689-a564-860e18adeb4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bb17be25213d69ff88c53e680695ccbe020df26b41ea49905af6a67614e1e29
Date: Tue, 29 Mar 2022 22:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648592818
