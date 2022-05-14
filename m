Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18A662B
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652521739;
	h=To:Subject:From:Message-Id:Date;
	bh=WWUwF6bsXfIm7MzKX64uq1pHM9AFe+Rmywsoh7cR/Ro=;
	b=ZqSRD5ntum4zt0/SxYA/uWXgTiovEi9r6hsTobjw8d87BrdD0lA24b5T8BVTSjeQ
	i+UTX8Nm6DJ7nq8xZOeF/5N7LuphQ0Cy1+fJhVCD2Qn8KXi3sBUUj9vIseEaFZ4vqEx
	lFzoHgsBSzltmqYyAK7R7/IOXZtwBv8NzrLNI8VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652521739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WWUwF6bsXfIm7MzKX64uq1pHM9AFe+Rmywsoh7cR/Ro=;
	b=GFNHBeiyx8zmJdT0UHDdfhBeHo0KzTgsqOdqXweXLn2rWSroZ81rL+GpN2RHnUTt
	isl4pDP1LK6I6lpVavDAv0iFjLeB+d1CnfmcyOB9ir4z5ccOpTCQ2AWx4Il+Xx29fDa
	2C6FD3U4VfAX1AEMIoq0jOGHGgUUv4mBEj7EoKew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1f8a40e-d96a45ab-afc4-4060-951f-9c12833282db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c92133173fdfdd22293a84d7cf46fc107245ab6991000905177f16b2b7361841
Date: Sat, 14 May 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652521739
