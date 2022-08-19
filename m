Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9982193
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660870253;
	h=To:Subject:From:Message-Id:Date;
	bh=eAs2sADNcwCZdG4GurGeN9c38lgUbTHFKwmzoFmL+2M=;
	b=jQ3OOBx6s3mE4oyH80E7J6GnqgqhVRwRNAwJAEuFMM35qGqBX+JPS0KeQ9YXJRa8
	CgStLb0wgMGTNYdK9+KBxswGgdLUn+Rn+8/UQFlgLHDoT1VE3QzEOpdu6pcbnH6ZkFH
	d4oWBzQqAJNOgEWdTxj+gjDh9jcturII1FbQH28E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660870253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAs2sADNcwCZdG4GurGeN9c38lgUbTHFKwmzoFmL+2M=;
	b=TDW+eqjHXcnhHNS2XHDVmMyKjPjUzk+ftqs9JZE2+KMQ1mukpZf+hcg80kkuAauj
	3UuEy5G5u28b7MBH6+Mei+fAZ0b9XLzwI4TMWjVvfF7YKGsGtziewV2ZWUFrZRXFKWA
	HuZeuqInPPM8uB5arer/OD0lIXiPhXE0zDdwSKjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b394d80a-3a5d6c67-8e1b-4167-ac41-600dc830127c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90c0e005e986f5af0daea11c3f3e391c3173322c9a5099ae726e401b7d8a815a
Date: Fri, 19 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660870252
