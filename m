Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF592F57
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658953253;
	h=To:Subject:From:Message-Id:Date;
	bh=ibZHnZmSItAOTCV4ihUkzJn6c6T0KCZ8t3PqgM1EW3c=;
	b=gvjqSBAshNmm9sOoEpkuEK+6BmEviXkK8lfB3wnNtNTfGZmScpcsBAgaPM61bI6w
	n+lADiLeamF0msU71XRbuMKXN5yQsQgOzNYmvIc/3Nc+Sw3xtk8i8BRJ1u5SSH2GNqs
	zBbGz8HqPCv5uymR5eboIQ/to5alpUy0SBoN0ZA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658953253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ibZHnZmSItAOTCV4ihUkzJn6c6T0KCZ8t3PqgM1EW3c=;
	b=cHXijZFzO+tUpkTyZih4mfaru6G1r+nk9t/9Jnrk31BbypBWYuvzyVfIaOqsPh1J
	obt7NIkYOTk3FZnxBfPHT8aijEnttLmGMGjWOwxnIIyjAU87qXubVBrGwpywqY/tdC4
	18zk7rHgR4FpoFchzIV3aUcEVsA3pUAvHIXTOIag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824151bec2-89142395-1a4f-4571-b82f-f9109a4c73af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 675be26f85860c12c8f5baa14a92dce10eeb2f6bdb2ff0b6be6912b2f6d0b749
Date: Wed, 27 Jul 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658953252
