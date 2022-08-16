Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52D753B0
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660669853;
	h=To:Subject:From:Message-Id:Date;
	bh=1gRpmja+i+MX7nRcpy51ZJ3NU7QvqYThZw2aAGpCcyQ=;
	b=NjHh7U7tqCvsxF6PTHw9rH9iPLaEGbd8DM8aieCIh1oQnEn64/lzfKiqtta5OCH5
	dntK5fFSo0UWy2x6TlAPEy6VB80xTFEN1WgTdUieOUfv/swgfyQb4VBsObNHTFnbn0p
	r+1NNKW2olFTgJfLy8H/mCARuxrLegcVjmQUkugs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660669853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1gRpmja+i+MX7nRcpy51ZJ3NU7QvqYThZw2aAGpCcyQ=;
	b=dpl1zvCFKCSOKkSkgg76wyeJwpRjHoF4BnhFWCWVLFqoQmU+jWWG54t6cmaQ00FW
	oBckd7L8mgrHAF+KwXCfOBItl7bVmZwkqqQJnbAhHT4Atdw0dsgO1QZKd1D/oS9LNsE
	YIQe6OmEwOFDyhYbqbKaF5txURk64rkWz1Yzg3jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7a2fc2a-0bee3cec-7ad8-4d78-9b94-d9fb1931e72e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d463a7b8d09fd3ebf50fac5ca922999a942fa0b964ba463b245ebc570631c19a
Date: Tue, 16 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660669852
