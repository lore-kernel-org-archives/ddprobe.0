Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F53F3C2B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 23:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657495013;
	h=To:Subject:From:Message-Id:Date;
	bh=bST85jMeTE2U0rQJGwCtljlJvUTFZsy/I3W2qNXh0k0=;
	b=E1ZkzW4QB/5GWDC70Fzb/XvLf5jQZm5nAp2CTS/dtjHj31qS32xLiVOHydeRYJdE
	n5eyE/tjb2lXnfdc+8JBXcJTZWXeb2n2bMjyxt9yXdw1jIdKiZqS7wXx31NNTMLBO/i
	magCt1LE0S6jXAljKPQchmXhvjna1qFWIf3050x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657495013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bST85jMeTE2U0rQJGwCtljlJvUTFZsy/I3W2qNXh0k0=;
	b=HYR3ouIawfTaHozbowDJwBHJSiQYrMkmckGyBzbl4CFCcBLx+0/iHQmiywLGKpZx
	nv/9vh6mcfh240rXQvOccdhpD5QWwqlOlkExXkDpDtcpVQx95POFzdxSSMiQ5YpUuyF
	hvSZmi4MOGYngvAFObFB96Nf1CGJa7erGXpeJxFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea66c3f4-04cd846d-d734-4d01-a3c8-b91cba8e7dd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6939b044d8730fffd392d26036e227e045b2ce4f7db52c0d621be6d966766c14
Date: Sun, 10 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657495012
