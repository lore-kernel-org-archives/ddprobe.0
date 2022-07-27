Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F19A3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658905252;
	h=To:Subject:From:Message-Id:Date;
	bh=AiiaScbcYeLx4cPn/NY6jJ6TVvJqh6BrZjGHgzC1RIg=;
	b=dTKi7A+n9/K36fIsQe6fVfEU4qkYijHZQGrU8e/GsHu1E0Yu+QDJjA1LxkcpHuxh
	ThYFj9CqHBiv3sieSNQqub8cNmn1R4hsq6xfS1z3C+KUWgMSVjffADUuuUTJscl67U3
	SyVPPlP+NTF1eeAOORR2KW26KnT0qy0ZJFn6aOmk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658905252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AiiaScbcYeLx4cPn/NY6jJ6TVvJqh6BrZjGHgzC1RIg=;
	b=IN73MWkLavN1vGWP99F04QgJeDYNXdzVjZej2f25HYxjQqJiunghdZ+DRDvFq8x6
	pnnG3gX5ohdoD+k6ZDe/OKrNuGYJ1oEf3j+vgEMolImJIyp8DSDr1h36ZvubB/gCzC7
	xN6O1JA4JpuUBlkm/c629bzgoUelQPLwVIq+ez9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e7552a8-f44faeb3-5e8f-4909-a6e1-457a9c54d859-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32c984536a849e5ac976eb99ebcffa9ae00a4d530468348371264484989269ca
Date: Wed, 27 Jul 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658905252
